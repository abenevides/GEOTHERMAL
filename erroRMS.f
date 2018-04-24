
        real*8 m_est(100), m_ver(100)
        
        print*, 'INPUT'
        print*, ' '

        m_ver(1) = 22.200
        m_ver(2) = 20.100
        m_ver(3) = 22.900
        m_ver(4) = 30.500
        m_ver(5) = 27.500
        m_ver(6) = 14.800
        m_ver(7) =  0.000
        m_ver(8) = 39.100
        m_ver(9) = 22.900


        m_est(1) =  21.905
        m_est(2) =  19.360
        m_est(3) =  23.381
        m_est(4) =  27.242
        m_est(5) =  27.432
        m_est(6) =  14.744
        m_est(7) =   3.595
        m_est(8) =  40.425
        m_est(9) =  20.590

        n=9
        
       print*,'m_ver'
       do I=1,n
              print*, m_ver(I)
       enddo
       print*,'m_est'
       do I=1,n
              print*, m_est(I)

       end do

        sum2 = 0.d0
        sum3 = 0.d0

        do i = 1, n
        sum2 = sum2 + (m_est(i)-m_ver(i))**2
	sum3 = sum3 + m_ver(i)**2
        enddo

	sum2 = sqrt(sum2/sum3)*100.d0
	
	print*, ' '
	print*, ' erro rms relativo (*100)'
        print*,sum2
        
        pause
        
        end
