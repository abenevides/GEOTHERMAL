
        real*8 m_est(100), m_ver(100)
        
        print*, 'INPUT'
        print*, ' '

        m_ver(1)=22.2
        m_ver(2)=20.1
        m_ver(3)=22.9
        m_ver(4)=30.5
        m_ver(5)=27.5
        m_ver(6)=14.8
        m_ver(7)=0.0
        m_ver(8)=39.1
        m_ver(9)=22.9

        
        m_est(1)=19.5124016
        m_est(2)=33.0314522
        m_est(3)=22.2370033
        m_est(4)=34.6714478
        m_est(5)=28.7087879
        m_est(6)=16.3057022
        m_est(7)=-0.983072817
        m_est(8)=26.4353905
        m_ver(9)=12.7577324
        
        n=9
        
       print*,'m_ver'
       do I=1,8
              print*, m_ver(I)
       enddo
       print*,'m_est'
       do i=1,8
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
